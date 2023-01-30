.class Lcom/android/dialer/app/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$6;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClicked()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity$6;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/DialtactsActivity;->onBackPressed()V

    return-void
.end method

.method public onSearchViewClicked()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity$6;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/app/DialtactsActivity;->access$1300(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    return-void
.end method
