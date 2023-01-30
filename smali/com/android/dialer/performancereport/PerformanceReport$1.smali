.class final Lcom/android/dialer/performancereport/PerformanceReport$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PerformanceReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/performancereport/PerformanceReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 43
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->SCROLL:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
