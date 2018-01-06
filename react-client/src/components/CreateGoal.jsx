import React from 'react';

class CreateGoal extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      description: '',
      punishment: '',
      initiate: true,
      frequency: ''
    };

    this.changeRoute = {
      'description': (value) => this.setState({description: value}),
      'punishment': (value) => this.setState({punishment: value}),
      'initiate': (value) => this.setState({initiate: value}),
      'frequency': (value) => this.setState({frequency: value})
    };

    this.handleInputChange = this.handleInputChange.bind(this);
  }

  handleInputChange(stateKey, event) {
    console.log(this.state);
    this.changeRoute[stateKey](event.target.value);
  }

  render() {
    return (
      <div>
        I want to 
        <select onChange={(e) => this.handleInputChange('initiate', e)}>
          <option value={true}>start</option>
          <option value={false}>quit</option>
        </select>
        <input type="text" value={this.state.description} onChange={(e) => this.handleInputChange('description', e)} />
        
        at least
        <input type="number" value={this.state.frequency} 
        onChange={(e) => this.handleInputChange('frequency', e)}/> times a week. <br/>

        My punishment will be:
        <input type="text" value={this.state.punishment} 
        onChange={(e) => this.handleInputChange('punishment', e)} />
      </div>
    )
  }
}

export default CreateGoal;