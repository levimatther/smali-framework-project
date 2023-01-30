.class Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "LazyViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/LazyViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/LazyViewPager;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/calllog/LazyViewPager;)V
    .locals 0

    .line 1868
    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/LazyViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/calllog/LazyViewPager;Lcom/android/dialer/app/calllog/LazyViewPager$1;)V
    .locals 0

    .line 1868
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;-><init>(Lcom/android/dialer/app/calllog/LazyViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/LazyViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1877
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;->this$0:Lcom/android/dialer/app/calllog/LazyViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->dataSetChanged()V

    return-void
.end method
