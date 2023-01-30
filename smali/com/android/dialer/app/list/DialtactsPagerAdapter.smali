.class public Lcom/android/dialer/app/list/DialtactsPagerAdapter;
.super Landroidx/legacy/app/FragmentPagerAdapter;
.source "DialtactsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/DialtactsPagerAdapter$TabIndex;
    }
.end annotation


# static fields
.field public static final TAB_COUNT_DEFAULT:I = 0x3

.field public static final TAB_COUNT_WITH_VOICEMAIL:I = 0x4

.field public static final TAB_INDEX_ALL_CONTACTS:I = 0x2

.field public static final TAB_INDEX_HISTORY:I = 0x1

.field public static final TAB_INDEX_SPEED_DIAL:I = 0x0

.field public static final TAB_INDEX_VOICEMAIL:I = 0x3


# instance fields
.field private callLogFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

.field private contactsFragment:Lcom/android/dialer/contactsfragment/ContactsFragment;

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public hasActiveVoicemailProvider:Z

.field private newCallLogFragment:Lcom/android/dialer/calllog/ui/NewCallLogFragment;

.field private oldContactsFragment:Lcom/android/dialer/app/list/AllContactsFragment;

.field private oldSpeedDialFragment:Lcom/android/dialer/app/list/OldSpeedDialFragment;

.field private speedDialFragment:Lcom/android/dialer/speeddial/SpeedDialFragment;

.field private final tabTitles:[Ljava/lang/String;

.field private final useNewCallLogTab:Z

.field private final useNewContactsTab:Z

.field private final useNewSpeedDialTab:Z

.field private voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;[Ljava/lang/String;Z)V
    .locals 2

    .line 75
    invoke-direct {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->fragments:Ljava/util/List;

    .line 77
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p2

    const-string v0, "enable_new_favorites_tab"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewSpeedDialTab:Z

    .line 78
    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/calllog/CallLogComponent;->callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;

    move-result-object p2

    .line 79
    invoke-virtual {p2, p1}, Lcom/android/dialer/calllog/CallLogFramework;->isNewCallLogEnabled(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewCallLogTab:Z

    .line 81
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string p2, "enable_new_contacts_tab"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewContactsTab:Z

    .line 82
    iput-object p3, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->tabTitles:[Ljava/lang/String;

    .line 83
    iput-boolean p4, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider:Z

    .line 84
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->fragments:Ljava/util/List;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ViewPagerAdapter.getItem"

    const-string v4, "position: %d"

    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v0, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    if-nez p1, :cond_0

    .line 134
    new-instance p1, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    invoke-direct {p1}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "new VisualVoicemailCallLogFragment: %s"

    .line 135
    invoke-static {v2, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    return-object p1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fragment at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 121
    :cond_2
    iget-boolean p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewContactsTab:Z

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->contactsFragment:Lcom/android/dialer/contactsfragment/ContactsFragment;

    if-nez p1, :cond_3

    .line 123
    new-instance p1, Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-direct {p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->contactsFragment:Lcom/android/dialer/contactsfragment/ContactsFragment;

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->contactsFragment:Lcom/android/dialer/contactsfragment/ContactsFragment;

    return-object p1

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldContactsFragment:Lcom/android/dialer/app/list/AllContactsFragment;

    if-nez p1, :cond_5

    .line 128
    new-instance p1, Lcom/android/dialer/app/list/AllContactsFragment;

    invoke-direct {p1}, Lcom/android/dialer/app/list/AllContactsFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldContactsFragment:Lcom/android/dialer/app/list/AllContactsFragment;

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldContactsFragment:Lcom/android/dialer/app/list/AllContactsFragment;

    return-object p1

    .line 109
    :cond_6
    iget-boolean p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewCallLogTab:Z

    if-eqz p1, :cond_8

    .line 110
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->newCallLogFragment:Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    if-nez p1, :cond_7

    .line 111
    new-instance p1, Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    invoke-direct {p1}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->newCallLogFragment:Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    .line 113
    :cond_7
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->newCallLogFragment:Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    return-object p1

    .line 115
    :cond_8
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->callLogFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    if-nez p1, :cond_9

    .line 116
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(I)V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->callLogFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    .line 118
    :cond_9
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->callLogFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    return-object p1

    .line 97
    :cond_a
    iget-boolean p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->useNewSpeedDialTab:Z

    if-eqz p1, :cond_c

    .line 98
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->speedDialFragment:Lcom/android/dialer/speeddial/SpeedDialFragment;

    if-nez p1, :cond_b

    .line 99
    invoke-static {}, Lcom/android/dialer/speeddial/SpeedDialFragment;->newInstance()Lcom/android/dialer/speeddial/SpeedDialFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->speedDialFragment:Lcom/android/dialer/speeddial/SpeedDialFragment;

    .line 101
    :cond_b
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->speedDialFragment:Lcom/android/dialer/speeddial/SpeedDialFragment;

    return-object p1

    .line 103
    :cond_c
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldSpeedDialFragment:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    if-nez p1, :cond_d

    .line 104
    new-instance p1, Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-direct {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldSpeedDialFragment:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    .line 106
    :cond_d
    iget-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldSpeedDialFragment:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->tabTitles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRtlPosition(I)I
    .locals 1

    .line 198
    invoke-static {}, Lcom/android/dialer/util/ViewUtil;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public hasActiveVoicemailProvider()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider:Z

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ViewPagerAdapter.instantiateItem"

    const-string v4, "position: %d"

    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-super {p0, p1, p2}, Landroidx/legacy/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    .line 153
    instance-of v1, p1, Lcom/android/dialer/app/list/OldSpeedDialFragment;

    if-eqz v1, :cond_0

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/OldSpeedDialFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldSpeedDialFragment:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    goto :goto_0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/speeddial/SpeedDialFragment;

    if-eqz v1, :cond_1

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/speeddial/SpeedDialFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->speedDialFragment:Lcom/android/dialer/speeddial/SpeedDialFragment;

    goto :goto_0

    .line 157
    :cond_1
    instance-of v1, p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->callLogFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    goto :goto_0

    .line 159
    :cond_2
    instance-of v0, p1, Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    if-eqz v0, :cond_3

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->newCallLogFragment:Lcom/android/dialer/calllog/ui/NewCallLogFragment;

    goto :goto_0

    .line 161
    :cond_3
    instance-of v0, p1, Lcom/android/dialer/contactsfragment/ContactsFragment;

    if-eqz v0, :cond_4

    .line 162
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/contactsfragment/ContactsFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->contactsFragment:Lcom/android/dialer/contactsfragment/ContactsFragment;

    goto :goto_0

    .line 163
    :cond_4
    instance-of v0, p1, Lcom/android/dialer/app/list/AllContactsFragment;

    if-eqz v0, :cond_5

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/AllContactsFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->oldContactsFragment:Lcom/android/dialer/app/list/AllContactsFragment;

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    .line 167
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public removeVoicemailFragment(Landroid/app/FragmentManager;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->voicemailFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    :cond_0
    return-void
.end method

.method public setHasActiveVoicemailProvider(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider:Z

    return-void
.end method
