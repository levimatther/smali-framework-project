.class public Lcom/android/dialer/constants/ConstantsImpl;
.super Lcom/android/dialer/constants/Constants;
.source "ConstantsImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/dialer/constants/Constants;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotatedCallLogProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.annotatedcalllog"

    return-object v0
.end method

.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.files"

    return-object v0
.end method

.method public getFilteredNumberProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.blocking.filterednumberprovider"

    return-object v0
.end method
