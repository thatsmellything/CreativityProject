//
//  ArtCollectionViewController.swift
//  CreativityProject
//
//  Created by Judkins, Jensen on 11/9/18.
//  Copyright © 2018 Judkins, Jensen. All rights reserved.
//

        import Foundation

        private let reuseIdentifier = "artIdentifier"
        public class ArtCollectionViewController: UICollectionViewController
        {

        //MARK: Data members for creativity screen
        private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
        private let itemsPerRowCompact : CGFloat = 4
        private let itemsPerRowNormal : CGFloat = 6

        private let creativeCS : [UIImage?] =
        {
        return [
        UIImage(named: "octocat")]
        }()

        private let labels : [String] =
        {
        return [
        "This",
        "needs",
        "to",
        "be",
        "one",
        "to",
        "one",
        "with",
        "creativeCS",
        "above"
        ]
        }()






        //MARK: - LifeCycle
        public override func viewDidLoad() -> Void
        {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        }
        //MARK: - Navigation


        //MARK: UICollectionViewDataSource

        public override func numberOfSections(in collectionView: UICollectionView)->Int
        {
        return 1
        }

        public override func collectionView(_ collectionView:UICollectionView, numberOfItemsInSection section: Int) -> Int
        {
        return ceativeCS.count
        }
        public override func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
        {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        artCell.backgroundColor = .purple
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]

        return artCell
        }

        //MARK: UICollectionViewDelegate
        public func collectionView(_ collectionView:UICollectionView,
                   layout collectionViewLayout: UICollectionViewLayout,
                   sizeForItemAt indexPath: IndexPath) -> CGSize
        {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth/ itemsPerRowCompact
        return CGSize(width: widthPerItem, height: widthPerItem)

        }

        public func collectionView(_ collectionView: UICollectionView,
                   layout collectionViewLayout: UICollectionViewLayout,
                   insetForSectionAt section: Int) -> UIEdgeInsets
        {
        return sectionInsets
        }

        public func collectionView(_ collectionView: UICollectionView,
                   layout collectionViewLayout: UICollectionViewLayout,
                   minimumLineSpacingForSectionAt section: Int) -> CGFloat
        {
        return sectionInsets.left
        }
