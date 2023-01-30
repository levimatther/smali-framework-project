.class public Lcom/android/dialer/about/AboutPhoneFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutPhoneFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private populateBuildVersion()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/about/AboutPhoneFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f140000

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/dialer/about/AboutPhoneFragment;->addPreferencesFromResource(I)V

    .line 39
    new-instance p1, Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/dialer/about/LicenseMenuActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f110388

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/dialer/about/AboutPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/about/AboutPhoneFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 42
    invoke-direct {p0}, Lcom/android/dialer/about/AboutPhoneFragment;->populateBuildVersion()V

    return-void
.end method
