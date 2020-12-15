import React from 'react';

import * as Minesweeper from '../minesweeper';
import Board from './board';

class Game extends React.Component {
    constructor(props) {
        super(props);
        const Board = new Minesweeper.Board;
        this.state = {board: Board};
    }

    updateBoard() {
        
    }
    render() {
        return (
            <div>
                <Board board={this.state.board} updateGame={this.updateGame} />
            </div>
        );
    }
}

export default Game;