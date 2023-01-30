.class Lcom/android/dialer/app/list/PhoneFavoriteListView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/PhoneFavoriteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoriteListView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$000(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {v1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$100(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    const/16 v1, -0x19

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$000(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {v1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$200(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->smoothScrollBy(II)V

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->access$300(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
