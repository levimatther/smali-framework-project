.class Lcom/android/incallui/InCallActivity$ShouldShowUiResult;
.super Ljava/lang/Object;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShouldShowUiResult"
.end annotation


# instance fields
.field public final call:Lcom/android/incallui/call/DialerCall;

.field public final shouldShow:Z


# direct methods
.method constructor <init>(ZLcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    .line 1319
    iput-object p2, p0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->call:Lcom/android/incallui/call/DialerCall;

    return-void
.end method
