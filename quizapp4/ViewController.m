//
//  ViewController.m
//  quizapp4
//
//  Created by chikatokitamuro on 2016/01/13.
//  Copyright © 2016年 chikatokitamuro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *mondai1;

@property (weak, nonatomic) IBOutlet UIButton *marubuttun;
@property (weak, nonatomic) IBOutlet UIButton *pekebutton;

@property (weak, nonatomic) IBOutlet UILabel *kaitoulabel;


@property (weak, nonatomic) IBOutlet UILabel *seikairitulabel;


@end

@implementation ViewController

int  countNumber;

int  seikaisu;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mondai1.text = @"問題１、マツコとキムタクは高校１年の時、同級生であった";
}
countNumber = 0;//問題数のカウント
seikaisu = 0;//正解数のカウント
//なぜエラーが出るのでしょうか


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)maru:(id)sender {
    switch  (countNumber) {
        case 0:
            // 最初の問題は丸が正解なので、正解扱いにする
            [self seikai];
            seikaisu++;
            break;
        case 1:
            [self seikai];
            seikaisu++;
            break;
        case 2:
            [self fuseikai];
            break;
        case 3:
            [self seikai];
            seikaisu++;
            break;
        case 4:
            [self fuseikai];
            break;
        default:
            break;
    }
    
    // 正解でも不正解でも、次の問いに進む
    countNumber1++;//なぜエラーが出るのでしょうか
    [self showQuestion];

}


- (IBAction)peke:(id)sender {
    switch (countNumber) {
        case 0:
            [self fuseikai];
            break;
        case 1:
            [self fuseikai];
            break;
        case 2:
            [self seikai];
            seikaisu++;
            break;
        case 3:
            [self fuseikai];
            break;
        case 4:
            [self seikai];
            seikaisu++;
            break;
        default:
            break;
    }
    
    countNumber++;
    [self showQuestion];
}

- (void)seikai {
    // 正解だった時の処理
    self.kaitoulabel.text = @"正解です";
    self.seikairitulabel.text = @"正解率は%d％です",seikaisu/5*100;
    //なぜエラーが出るのでしょうか
}

- (void)fuseikai {
    // 不正解だった時の処理
    self.kaitoulabel.text = @"不正解です";
}

// 問題を出題する
- (void)showQuestion {
    switch (countNumber) {
        case 0:
            self.mondai1.text = @"問題１、マツコとキムタクは高校１年の時、同級生であった";
            break;
        case 1:
            self.mondai1.text = @"問題2、一富士二鷹三茄子の次は四扇子、五煙草、六座頭である";
            break;
        case 2:
            self.mondai1.text = @"問題3、首無しのニワトリマイクは１８日間生きた";
            break;
        case 3:
            self.mondai1.text = @"問題4、クマムシは宇宙空間でも死なない";
            break;
        case 4:
            self.mondai1.text = @"問題5、唾液は無菌状態であるため、消毒にも使用できる";
            break;
        default:
            break;
    }
}

@end
