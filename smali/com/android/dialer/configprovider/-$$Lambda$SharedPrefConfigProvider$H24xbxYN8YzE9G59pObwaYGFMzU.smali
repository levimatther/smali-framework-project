.class public final synthetic Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    iput-object p2, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$0:Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    iget-object v1, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->lambda$getString$0$SharedPrefConfigProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
