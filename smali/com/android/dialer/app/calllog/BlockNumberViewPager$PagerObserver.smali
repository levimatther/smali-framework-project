.class Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "BlockNumberViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/BlockNumberViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/BlockNumberViewPager;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/calllog/BlockNumberViewPager;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/calllog/BlockNumberViewPager;Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;)V
    .locals 0

    .line 1851
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;-><init>(Lcom/android/dialer/app/calllog/BlockNumberViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->dataSetChanged()V

    return-void
.end method
