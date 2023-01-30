.class public Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;
.super Landroidx/fragment/app/Fragment;
.source "ExpirableCacheHeadlessFragment.java"


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "ExpirableCacheHeadlessFragment"


# instance fields
.field private retainedCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache<",
            "Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static attach(Landroidx/appcompat/app/AppCompatActivity;)Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->attach(Landroidx/fragment/app/FragmentManager;)Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;

    move-result-object p0

    return-object p0
.end method

.method private static attach(Landroidx/fragment/app/FragmentManager;)Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;
    .locals 2

    const-string v0, "ExpirableCacheHeadlessFragment"

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;

    invoke-direct {v1}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getRetainedCache()Lcom/android/dialer/util/ExpirableCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/dialer/util/ExpirableCache<",
            "Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->retainedCache:Lcom/android/dialer/util/ExpirableCache;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x64

    .line 60
    invoke-static {p1}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->retainedCache:Lcom/android/dialer/util/ExpirableCache;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->setRetainInstance(Z)V

    return-void
.end method
