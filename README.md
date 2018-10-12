### 实现继承BaseTableViewAdapter

```
class MixTableViewAdapter: BaseTableViewAdapter<Int> {

    override func onCreate() {
        cellHeight = 60
        mTableView?.registerNib(MixVolumeTableViewCell.self)
    }
    
    override func jkTableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath, bingData: Int) -> UITableViewCell {
        let cell: MixVolumeTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
        
        //处理data
        //...
        
        return cell
    }
    
}
```

### 实现继承BaseCollectionViewAdapter

```
import UIKit

class MixCollectionViewAdapter: BaseCollectionViewAdapter<Int> {

    override func onCreate() {
        let itemCountOnLine: Int = UIScreen.main.bounds.width > 320 ? 4 : 3
        mCollectionView?.collectionViewLayout = UICollectionViewFlowLayout.flowWithItemOnLine(itemCountOnLine, margin: 12)
    
        mCollectionView?.registerNib(MixItemCollectionViewCell.self)
    }
    
    override func jkCollectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath, data: Int) -> UICollectionViewCell {
        let cell: MixItemCollectionViewCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        
        //处理data
        //...
        
        return cell
    }
}
```

### 总结

iOS中各种MVX模式天天讨论，孰优孰虑？实际上平时的代码中，如果很好的使用设计模式，做代码的解耦，像适配器模式这样很好的使用，代码易读，开发维护成本降低，使用MVC开发绰绰有余了。