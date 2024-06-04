import requests
import concurrent.futures

# URL base da API
base_url = 'https://jsonplaceholder.typicode.com'

# Funcao obtem todos os posts em uma so chamada
def get_all_posts():
    
    response = requests.get(f'{base_url}/posts')
    posts = response.json()
    
    return posts

def main():
    print('Fetching all posts...')
    posts = get_all_posts()
    print(f'Fetched {len(posts)} posts')

    # Processamento em paralelo para obter comentários de cada post
    with concurrent.futures.ThreadPoolExecutor() as executor:
        futures = [executor.submit(fetch_post_comments, post['id']) for post in posts]
        for future in concurrent.futures.as_completed(futures):
            post_id, comments = future.result()
            print(f'Post {post_id} has {len(comments)} comments')

# Função para obter os comentários de um post específico
def fetch_post_comments(post_id):
    comments = requests.get(f'{base_url}/posts/{post_id}/comments').json()
    return post_id, comments

if __name__ == '__main__':
    main()
