.class public final synthetic Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;

    invoke-direct {v0}, Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;-><init>()V

    sput-object v0, Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;->INSTANCE:Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/android/dialer/location/CountryDetector;->lambda$processLocationUpdate$1(Ljava/lang/Throwable;)V

    return-void
.end method
