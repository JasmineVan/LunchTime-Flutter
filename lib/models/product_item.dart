class ProductItem {

  final String productID;
  final String productName;
  final String pictureURL;
  final double price;

  ProductItem(this.productID, this.productName, this.pictureURL, this.price);
}

class DummyData{

  List<ProductItem> listProduct = [
    ProductItem('000000001', 'Cánh gà chiên mắm', "https://i.postimg.cc/gcgjs69C/bo-nau-nam.jpg", 30000),
    ProductItem('000000002', 'Thịt heo kho trứng cút', "https://i.postimg.cc/YSNqWvfy/bo-xao-hanh.jpg", 30000),
    ProductItem('000000003', 'Cá nhồng kho tiêu', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000004', 'Bò nấu nấm', "https://i.postimg.cc/FsfrxWVS/bo-xao-rau-cu.jpg", 30000),
    ProductItem('000000005', 'Thịt heo kho su hào', "https://i.postimg.cc/sxLVr7s1/ca-basa-kho-tieu.jpg", 30000),
    ProductItem('000000006', 'Mắm linh thịt chưng', "https://i.postimg.cc/nVSVBbBZ/ca-dieu-hong-chien.jpg", 30000),
    ProductItem('000000007', 'Thịt heo kho dưa cải', "https://i.postimg.cc/cHXxFPzR/ca-hu-kho-tieu.jpg", 30000),
    ProductItem('000000008', 'Cá ngừ kho thơm', "https://i.postimg.cc/BbS86xrg/ca-loc-kho-to.jpg", 30000),
    ProductItem('000000009', 'Xíu mại chiên mắm tỏi', "https://i.postimg.cc/W1FdhpHQ/ca-ngu-kho-thom.jpg", 30000),
    ProductItem('000000010', 'Thịt heo rim tôm', "https://i.postimg.cc/1Xv8N8PZ/ca-nhong-kho-tieu.jpg", 30000),
    ProductItem('000000011', 'Chả cá rim lá chanh', "https://i.postimg.cc/wjC7J8K3/ca-nuc-kho-keo.jpg", 30000),
    ProductItem('000000012', 'Gà kho sả ớt', "https://i.postimg.cc/cLwdpvj4/canhgachienmam.jpg", 30000),
    ProductItem('000000013', 'Cá lóc kho tộ', "https://i.postimg.cc/gcgjs69C/bo-nau-nam.jpg", 30000),
    ProductItem('000000014', 'Sườn cốt lết nước dừa', "https://i.postimg.cc/KzqbPBKQ/dau-hu-non-sot-ca.jpg", 30000),
    ProductItem('000000015', 'Thịt heo kho măng', "https://i.postimg.cc/fy1hFsf9/ech-rim-mam.jpg", 30000),
    ProductItem('000000016', 'Thịt heo kho mắm ruốc', "https://i.postimg.cc/0yRs08Qg/ga-chien-muoi-ot.jpg", 30000),
    ProductItem('000000017', 'Bò xào rau củ', "https://i.postimg.cc/VsJv7kY5/nai-xao-hanh.jpg", 30000),
    ProductItem('000000018', 'Mực chiên sốt mắm tỏi', "https://i.postimg.cc/XNtJt6JL/nam-xao-dau-hao.jpg", 30000),
    ProductItem('000000019', 'Cá hú kho tiêu', "https://i.postimg.cc/0QqKggZh/nam-xao-la-e.jpg", 30000),
    ProductItem('000000020', 'Đậu hủ nhồi thịt sốt cà', "https://i.postimg.cc/76WvG4cW/muc-chien-mam-toi.jpg", 30000),
    ProductItem('000000021', 'Thịt trứng kho tàu', "https://i.postimg.cc/0Nt5fLFp/suon-cot-let-nuong.jpg", 30000),
    ProductItem('000000022', 'Gà chiên muối ớt', "https://i.postimg.cc/TwpdHtvB/suon-non-rim-man.jpg", 30000),
    ProductItem('000000023', 'Cá basa kho tiêu', "https://i.postimg.cc/4dqfCpJy/thit-heo-cu-cai.jpg", 30000),
    ProductItem('000000024', 'Nai xào hành', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000025', 'Thịt heo kho củ cải', "https://i.postimg.cc/KYcvtZqG/suon-cot-let-khia-nuoc-dua.jpg", 30000),
    ProductItem('000000026', 'Ba rọi kho mực muối', "https://i.postimg.cc/4y23xjbf/ba-roi-kho-muc-muoi.jpg", 30000),
    ProductItem('000000027', 'Giò heo hầm măng', "https://i.postimg.cc/TwpdHtvB/suon-non-rim-man.jpg", 30000),
    ProductItem('000000028', 'Cá diêu hồng chiên', "https://i.postimg.cc/TwpdHtvB/suon-non-rim-man.jpg", 30000),
    ProductItem('000000029', 'Vịt kho gừng', "https://i.postimg.cc/TwpdHtvB/suon-non-rim-man.jpg", 30000),
    ProductItem('000000030', 'Cá nục kho keo', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000031', 'Ếch rim mắm', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000032', 'Nai xào sả ớt', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000033', 'Nấm xào lá é', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000034', 'Đậu hủ non sốt cà', "https://i.postimg.cc/QC7XjVtb/thit-heo-dua-cai.jpg", 30000),
    ProductItem('000000035', 'Xíu mại sốt cà chua', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000036', 'Cá khế chiên', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000037', 'Sườn cốt lết nướng', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000038', 'Ba rọi kho đậu hủ', "https://i.postimg.cc/QxVtyxhH/ba-roi-dau-hu.jpg", 30000),
    ProductItem('000000039', 'Thịt trứng chiên', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000040', 'Gà kho gừng', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000041', 'Nai xào lá lốt', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000042', 'Mực xào', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000043', 'Heo quay dưa cải', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000044', 'Bò xào hành', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000045', 'Nấm xào dầu hào', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000046', 'Đậu hủ kho sả ớt', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),
    ProductItem('000000047', 'Sườn non rim mặn', "https://i.postimg.cc/kgs7J0nk/thit-heo-rim-tom.jpg", 30000),

  ];

}