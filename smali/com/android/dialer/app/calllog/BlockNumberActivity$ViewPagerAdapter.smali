.class public Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;
.super Landroidx/legacy/app/FragmentPagerAdapter;
.source "BlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/BlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/BlockNumberActivity;Landroid/app/FragmentManager;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    .line 370
    invoke-direct {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem: positon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$100(Lcom/android/dialer/app/calllog/BlockNumberActivity;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItem: missed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p1, v2, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZ)V

    return-object p1

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItem: dialed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p1, v2, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZ)V

    return-object p1

    .line 399
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItem: answered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p1, v1, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZ)V

    return-object p1

    .line 392
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItem: all"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZ)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemId: position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$100(Lcom/android/dialer/app/calllog/BlockNumberActivity;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 383
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItemPosition: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$200(Lcom/android/dialer/app/calllog/BlockNumberActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem: position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$200(Lcom/android/dialer/app/calllog/BlockNumberActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p2, v0

    .line 415
    invoke-super {p0, p1, p2}, Landroidx/legacy/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    .line 417
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/BlockNumberActivity;

    invoke-static {p2, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->access$302(Lcom/android/dialer/app/calllog/BlockNumberActivity;Lcom/android/dialer/app/calllog/CallLogFragment;)Lcom/android/dialer/app/calllog/CallLogFragment;

    return-object p1
.end method
