.class Lcom/android/dialer/app/widget/SearchEditTextLayout$1;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 101
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$1;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$1;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-static {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->access$000(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    return p1
.end method
