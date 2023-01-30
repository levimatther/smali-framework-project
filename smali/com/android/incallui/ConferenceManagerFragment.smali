.class public Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/baseui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/baseui/BaseFragment<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        "Landroid/widget/MenuBar$MenuBarListener;"
    }
.end annotation


# static fields
.field private static mMenuBar:Landroid/widget/MenuBar;


# instance fields
.field private endcallStringid:I

.field private mConferenceParticipantList:Landroid/widget/ListView;

.field private mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;"
        }
    .end annotation
.end field

.field private private_callStringid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/incallui/baseui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->endcallStringid:I

    .line 51
    iput v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    return-void
.end method

.method public static onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    .line 203
    :cond_0
    sget-object v0, Lcom/android/incallui/ConferenceManagerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p0, p1}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/baseui/Presenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/baseui/Ui;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onClickCSK()Z
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    .line 159
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item call id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConferenceManagerFragment_onClickCSK"

    invoke-static {v3, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "view call id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mParticipants:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->splitFromConference()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CONFERENCE_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090231

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    .line 79
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClickable(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p2

    sput-object p2, Lcom/android/incallui/ConferenceManagerFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 82
    invoke-virtual {p2, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    return-object p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 91
    invoke-super {p0}, Lcom/android/incallui/baseui/BaseFragment;->onResume()V

    .line 92
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Lcom/android/incallui/call/CallList;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private_callStringid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConferenceManagerFragment_onResume"

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/incallui/ConferenceManagerFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->endcallStringid:I

    iget v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public refreshCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshCall(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public update(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;Z)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mParticipants:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Lcom/android/contacts/common/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 120
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipants(Ljava/util/List;Z)V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/call/DialerCall;

    if-eqz p2, :cond_1

    const/16 p2, 0x1000

    .line 128
    invoke-virtual {p1, p2}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const/16 v0, 0x2000

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p1

    if-eqz p2, :cond_2

    const p2, 0x7f11028c

    .line 132
    iput p2, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f110287

    .line 135
    iput p1, p0, Lcom/android/incallui/ConferenceManagerFragment;->endcallStringid:I

    .line 138
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "private_callStringid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConferenceManagerFragment_update"

    invoke-static {p2, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/android/incallui/ConferenceManagerFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget p2, p0, Lcom/android/incallui/ConferenceManagerFragment;->endcallStringid:I

    iget v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->private_callStringid:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method
