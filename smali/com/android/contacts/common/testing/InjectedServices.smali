.class public Lcom/android/contacts/common/testing/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSystemService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/Map;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
