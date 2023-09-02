import {ErrorMessages} from "./errormessages.enum"

export class Matemagica {
    public x: number
    public y: number

    public getSum() {
        return this.Sum()
    }

    public getSub() {
        return this.Sub()
    }

    public setX(x: Number) {
        if (typeof x != 'number') {
            return ErrorMessages.INVALID_OPERATION
        }
        this.x = x
    }

    public setY(y: Number) {
        if (typeof y != 'number') {
            return ErrorMessages.INVALID_OPERATION
        }
        this.y = y
    }

    public getX() {
        return console.log(this.x)
    }

    public getY() {
        return console.log(this.y)
    }

    private Sum() {
        return this.x + this.y
    }

    private Sub() {
        return this.x - this.y
    }
}

export default Matemagica