import UIKit

extension ImageGalleryView: UICollectionViewDataSource {

  struct CollectionView {
    static let reusableIdentifier = "imagesReusableIdentifier"
  }

  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return images.count
  }

  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionView.reusableIdentifier,
      forIndexPath: indexPath) as! ImageGalleryViewCell

    cell.configureCell(images[indexPath.row] as! UIImage)

    return cell
  }
}
