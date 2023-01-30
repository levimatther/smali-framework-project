.class public final synthetic Lcom/android/dialer/location/-$$Lambda$CountryDetector$bFTB8jfrYM1qWWT5g9vLbU_u8-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/location/-$$Lambda$CountryDetector$bFTB8jfrYM1qWWT5g9vLbU_u8-A;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/location/-$$Lambda$CountryDetector$bFTB8jfrYM1qWWT5g9vLbU_u8-A;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/dialer/location/CountryDetector;->lambda$processLocationUpdate$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
