import React from 'react';
import Tile from './tile';

class Board extends React.Component {
    
    constructor(props) {
        super(props);
        this.buildBoard = this.buildBoard.bind();
    }

    buildBoard() {
        return (
            this.props.board.map( (row, y) => {
                return (<div></div>)
            })
        )
    }
    render() {
        return (
           <div id="board"></div>
        );
    
    }
}

export default Board;