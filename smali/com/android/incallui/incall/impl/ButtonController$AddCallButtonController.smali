.class public Lcom/android/incallui/incall/impl/ButtonController$AddCallButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x7f1102a2

    const v5, 0x7f0800d5

    move-object v0, p0

    move-object v1, p1

    .line 457
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIII)V

    .line 463
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 468
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$AddCallButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    return-void
.end method
