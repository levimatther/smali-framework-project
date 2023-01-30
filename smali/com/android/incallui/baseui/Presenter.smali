.class public abstract Lcom/android/incallui/baseui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/android/incallui/baseui/Ui;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mUi:Lcom/android/incallui/baseui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUi()Lcom/android/incallui/baseui/Ui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/incallui/baseui/Presenter;->mUi:Lcom/android/incallui/baseui/Ui;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onUiDestroy(Lcom/android/incallui/baseui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/incallui/baseui/Presenter;->onUiUnready(Lcom/android/incallui/baseui/Ui;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/incallui/baseui/Presenter;->mUi:Lcom/android/incallui/baseui/Ui;

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/baseui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/android/incallui/baseui/Presenter;->mUi:Lcom/android/incallui/baseui/Ui;

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/baseui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    return-void
.end method
