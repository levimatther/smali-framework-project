.class public final Lcom/android/dialer/performancereport/PerformanceReport;
.super Ljava/lang/Object;
.source "PerformanceReport.java"


# static fields
.field private static final ACTIVE_DURATION:J

.field private static final INVALID_TIME:J = -0x1L

.field private static final actionTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static appLaunchTimeMillis:J

.field private static firstClickTimeMillis:J

.field private static ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

.field private static lastActionTimeMillis:J

.field private static final recordOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private static recording:Z

.field private static startingTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->ACTIVE_DURATION:J

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actionTimestamps:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/android/dialer/performancereport/PerformanceReport$1;

    invoke-direct {v0}, Lcom/android/dialer/performancereport/PerformanceReport$1;-><init>()V

    sput-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->recordOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/dialer/performancereport/PerformanceReport;->recording:Z

    const-wide/16 v0, -0x1

    .line 50
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->appLaunchTimeMillis:J

    .line 51
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->firstClickTimeMillis:J

    .line 52
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->lastActionTimeMillis:J

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v0, -0x1

    .line 56
    sput v0, Lcom/android/dialer/performancereport/PerformanceReport;->startingTabIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionTimestamps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actionTimestamps:Ljava/util/List;

    return-object v0
.end method

.method public static getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    return-object v0
.end method

.method public static getStartingTabIndex()I
    .locals 1

    .line 146
    sget v0, Lcom/android/dialer/performancereport/PerformanceReport;->startingTabIndex:I

    return v0
.end method

.method public static getTimeSinceAppLaunch()J
    .locals 4

    .line 124
    sget-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->appLaunchTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/dialer/performancereport/PerformanceReport;->appLaunchTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimeSinceFirstClick()J
    .locals 4

    .line 131
    sget-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->firstClickTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 134
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/dialer/performancereport/PerformanceReport;->firstClickTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 120
    sget-boolean v0, Lcom/android/dialer/performancereport/PerformanceReport;->recording:Z

    return v0
.end method

.method public static logOnScrollStateChange(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->recordOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->recordOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static recordClick(Lcom/android/dialer/logging/UiAction$Type;)V
    .locals 6

    .line 78
    sget-boolean v0, Lcom/android/dialer/performancereport/PerformanceReport;->recording:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v1, 0x0

    const-string v2, "PerformanceReport.recordClick"

    const/4 v3, 0x0

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/logging/UiAction$Type;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s is ignored"

    invoke-static {v2, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sput-object v3, Lcom/android/dialer/performancereport/PerformanceReport;->ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

    return-void

    .line 87
    :cond_1
    sput-object v3, Lcom/android/dialer/performancereport/PerformanceReport;->ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/logging/UiAction$Type;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 93
    sget-wide v2, Lcom/android/dialer/performancereport/PerformanceReport;->lastActionTimeMillis:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/dialer/performancereport/PerformanceReport;->ACTIVE_DURATION:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 94
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->startRecording()V

    .line 95
    invoke-static {p0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    return-void

    .line 99
    :cond_2
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->lastActionTimeMillis:J

    .line 100
    sget-object v2, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->firstClickTimeMillis:J

    .line 103
    :cond_3
    sget-object v2, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object p0, Lcom/android/dialer/performancereport/PerformanceReport;->actionTimestamps:Ljava/util/List;

    sget-wide v2, Lcom/android/dialer/performancereport/PerformanceReport;->appLaunchTimeMillis:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static recordScrollStateChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 109
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->SCROLL:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    :cond_0
    return-void
.end method

.method public static setIgnoreActionOnce(Lcom/android/dialer/logging/UiAction$Type;)V
    .locals 2

    .line 154
    sput-object p0, Lcom/android/dialer/performancereport/PerformanceReport;->ignoreActionOnce:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/android/dialer/logging/UiAction$Type;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "PerformanceReport.setIgnoreActionOnce"

    const-string v1, "next action will be ignored once if it is %s"

    .line 155
    invoke-static {p0, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setStartingTabIndex(I)V
    .locals 0

    .line 150
    sput p0, Lcom/android/dialer/performancereport/PerformanceReport;->startingTabIndex:I

    return-void
.end method

.method public static startRecording()V
    .locals 2

    const-string v0, "PerformanceReport.startRecording"

    .line 61
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->appLaunchTimeMillis:J

    .line 64
    sput-wide v0, Lcom/android/dialer/performancereport/PerformanceReport;->lastActionTimeMillis:J

    .line 65
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    sget-object v0, Lcom/android/dialer/performancereport/PerformanceReport;->actionTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/android/dialer/performancereport/PerformanceReport;->recording:Z

    return-void
.end method

.method public static stopRecording()V
    .locals 1

    const-string v0, "PerformanceReport.stopRecording"

    .line 73
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/android/dialer/performancereport/PerformanceReport;->recording:Z

    return-void
.end method
