.class public Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;
.super Landroidx/legacy/app/FragmentPagerAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/CallLogActivity;Landroid/app/FragmentManager;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 1094
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

    .line 1113
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem: positon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$700(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 1099
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemId: position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$600(Lcom/android/dialer/app/calllog/CallLogActivity;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1107
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v0, "getItemPosition: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 1139
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem: position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$800(Lcom/android/dialer/app/calllog/CallLogActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p2, v0

    .line 1141
    invoke-super {p0, p1, p2}, Landroidx/legacy/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    .line 1142
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$900(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
