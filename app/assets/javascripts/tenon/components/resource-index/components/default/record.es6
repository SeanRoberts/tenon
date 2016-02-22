/* global React */

class DefaultRecord extends React.Component {
  render() {
    const {
      RecordTitle, RecordActions, RecordExpandedContent
    } = this.props.childComponents;
    const { isExpanded, onToggleExpand } = this.props;
    const classNames = ['record'];

    if (isExpanded) {
      classNames.push('record--is-expanded');
    }

    return (
      <li className={classNames.join(' ')}>
        <div className="record__details">
          <div className="record__expand-toggle" onClick={onToggleExpand}>
            <RecordTitle { ...this.props } />
          </div>

          <RecordActions { ...this.props } />
        </div>

        <RecordExpandedContent { ...this.props} />
      </li>
    );
  }
}

window.ResourceIndexComponents.DefaultRecord = DefaultRecord;
