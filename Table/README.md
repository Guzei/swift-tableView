#  Table

0. cell.textLabel!.text = ...
1. * var content = cell.defaultContentConfiguration() 
   * cell.defaultContentConfiguration()
   * cell.contentConfiguration = content
2. + tableData


    // In documentation: Returns the number of rows in the specified section of the table view.
    // But no! This is the number of attempts to find the data. Must be equal or less real data. If more will be crash.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {16}



https://developer.apple.com/documentation/uikit/views_and_controls/table_views?language=swift#//apple_ref/doc/uid/TP40007451
