.class final Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;
.super Ljava/lang/Object;
.source "BlockNumberViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/BlockNumberViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;)I
    .locals 0

    .line 89
    iget p1, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    check-cast p2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;->compare(Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
