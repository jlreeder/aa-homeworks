import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num2 });
  }

  clear (e) {
    e.preventDefault();
    this.setState({ num1: "", num2: "", result: 0 });
  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>

        <label>Num1:
        <br/>
        <input onChange={this.setNum1} value={this.state.num1}/>
        </label>
        <br/>
        <label>Num2:
          <br/>
          <input onChange={this.setNum2} value={this.state.num2}/>
        </label>

        <br/>
        <button onClick={this.clear}>Clear</button>
        <br/>
        <button onClick={this.add}>Add</button>
        <br/>
        <button onClick={this.subtract}>Subtract</button>
        <br/>
        <button onClick={this.multiply}>Multiply</button>
        <br/>
        <button onClick={this.divide}>Divide</button>

      </div>
    );
  }
}

export default Calculator;
