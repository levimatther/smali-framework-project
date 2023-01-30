.class public Lcom/android/incallui/contactgrid/BottomRow$Info;
.super Ljava/lang/Object;
.source "BottomRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/contactgrid/BottomRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final isForwardIconVisible:Z

.field public final isHdAttemptingIconVisible:Z

.field public final isHdIconVisible:Z

.field public final isSpamIconVisible:Z

.field public final isTimerVisible:Z

.field public final isWorkIconVisible:Z

.field public final label:Ljava/lang/CharSequence;

.field public final location:Ljava/lang/CharSequence;

.field public final shouldPopulateAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZZZZZ)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->label:Ljava/lang/CharSequence;

    .line 76
    iput-object p2, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->location:Ljava/lang/CharSequence;

    .line 77
    iput-boolean p3, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isTimerVisible:Z

    .line 78
    iput-boolean p4, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isWorkIconVisible:Z

    .line 79
    iput-boolean p5, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdAttemptingIconVisible:Z

    .line 80
    iput-boolean p6, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdIconVisible:Z

    .line 81
    iput-boolean p7, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isForwardIconVisible:Z

    .line 82
    iput-boolean p8, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isSpamIconVisible:Z

    .line 83
    iput-boolean p9, p0, Lcom/android/incallui/contactgrid/BottomRow$Info;->shouldPopulateAccessibilityEvent:Z

    return-void
.end method
