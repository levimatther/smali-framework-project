.class Lcom/android/dialer/calldetails/CallDetailsActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CallDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calldetails/CallDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

.field toFirst:Z

.field toLast:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toLast:Z

    .line 223
    iput-boolean p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toFirst:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 226
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 228
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    iget-boolean v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toFirst:Z

    iget-boolean v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toLast:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->scroolChange(Landroidx/recyclerview/widget/RecyclerView;ZZ)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    if-lez p3, :cond_0

    .line 236
    iput-boolean p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toLast:Z

    goto :goto_0

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;->toFirst:Z

    :goto_0
    return-void
.end method
