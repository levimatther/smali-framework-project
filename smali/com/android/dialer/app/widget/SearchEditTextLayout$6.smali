.class Lcom/android/dialer/app/widget/SearchEditTextLayout$6;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/widget/SearchEditTextLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-static {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->access$100(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-static {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->access$100(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;->onBackButtonClicked()V

    :cond_0
    return-void
.end method
