import requests

base_url = 'https://jsonplaceholder.typicode.com'

def get_all_posts():
    posts = requests.get(f'{base_url}/posts').json()
    
    detailed_posts = []
    for post in posts:
        post_id = post['id']
        print(f'Fetching details for post {post_id}')
        detailed_post = requests.get(f'{base_url}/posts/{post_id}').json()
        detailed_posts.append(detailed_post)
    
    return detailed_posts

def main():
    print('Fetching all posts...')
    posts = get_all_posts()
    print(f'Fetched {len(posts)} posts')

if __name__ == '__main__':
    main()
    