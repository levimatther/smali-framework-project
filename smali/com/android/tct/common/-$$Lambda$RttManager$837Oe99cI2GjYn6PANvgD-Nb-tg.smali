.class public final synthetic Lcom/android/tct/common/-$$Lambda$RttManager$837Oe99cI2GjYn6PANvgD-Nb-tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tct/common/-$$Lambda$RttManager$837Oe99cI2GjYn6PANvgD-Nb-tg;->f$0:Lcom/android/incallui/call/DialerCall;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/tct/common/-$$Lambda$RttManager$837Oe99cI2GjYn6PANvgD-Nb-tg;->f$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/tct/common/RttManager;->lambda$upgradeToRTT$0(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method
