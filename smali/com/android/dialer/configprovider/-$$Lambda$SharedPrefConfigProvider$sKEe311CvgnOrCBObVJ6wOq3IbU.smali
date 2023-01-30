.class public final synthetic Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    iput-object p2, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$2:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    iget-object v1, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->lambda$getLong$1$SharedPrefConfigProvider(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
