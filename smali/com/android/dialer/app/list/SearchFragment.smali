.class public Lcom/android/dialer/app/list/SearchFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/SearchFragment$HostInterface;
    }
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

.field private mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

.field private mAddToContactNumber:Ljava/lang/String;

.field protected mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

.field private mHideDialpadDuration:I

.field private mPaddingTop:I

.field private mShadowHeight:I

.field private mShowDialpadDuration:I

.field private mSpacer:Landroid/widget/Space;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/SearchFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    return-object p0
.end method


# virtual methods
.method public checkForProhibitedPhoneNumber(Ljava/lang/String;)Z
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "SearchFragment.checkForProhibitedPhoneNumber"

    const-string v1, "the phone number is prohibited explicitly by a rule"

    .line 190
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f1101e9

    .line 195
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "phone_prohibited_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 206
    new-instance v0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 208
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 209
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 400
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 401
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 403
    new-instance p2, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    .line 404
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/SearchFragment;->setQuickContactEnabled(Z)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/SearchFragment;->setAdjustSelectionBoundsEnabled(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/SearchFragment;->setDarkTheme(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/SearchFragment;->setUseCallableUri(Z)V

    .line 87
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    iput-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t implement OnListFragmentScrolledListener. Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SearchFragment.onAttach"

    .line 89
    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result p3

    .line 161
    new-instance v0, Lcom/android/dialer/app/list/SearchFragment$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/dialer/app/list/SearchFragment$2;-><init>(Lcom/android/dialer/app/list/SearchFragment;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object p1
.end method

.method protected onItemClick(IJ)V
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;

    .line 216
    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcutType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SearchFragment.onItemClick"

    invoke-static {v5, v2, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onItemClick(IJ)V

    goto/16 :goto_5

    .line 269
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/SearchFragment;->checkForProhibitedPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 274
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/list/SearchFragment;->getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setPositionOfSelectedSearchResult(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 277
    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCharactersInSearchString(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 280
    invoke-interface {p3, p2, v2, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V

    goto/16 :goto_5

    .line 264
    :cond_3
    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 266
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 251
    :cond_4
    instance-of p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz p1, :cond_5

    .line 252
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 253
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 257
    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 259
    :goto_2
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f110059

    .line 260
    invoke-static {p2, p1, p3}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_5

    .line 239
    :cond_7
    instance-of p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz p1, :cond_8

    .line 240
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 241
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 243
    :cond_8
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 245
    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    .line 247
    :goto_3
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    .line 225
    :cond_a
    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 227
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/SearchFragment;->checkForProhibitedPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 229
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/list/SearchFragment;->getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setPositionOfSelectedSearchResult(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 232
    :goto_4
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCharactersInSearchString(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 235
    invoke-interface {p3, p2, v3, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SearchFragment.onStart"

    const-string v3, ""

    .line 99
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    iput-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {v2}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->getActionBarHeight()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mActionBarHeight:I

    const v2, 0x7f080215

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mShadowHeight:I

    const v2, 0x7f07023c

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mPaddingTop:I

    const v2, 0x7f0a0014

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mShowDialpadDuration:I

    const v2, 0x7f0a0015

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mHideDialpadDuration:I

    .line 111
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v3, :cond_1

    .line 114
    instance-of v3, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    goto :goto_0

    .line 117
    :cond_0
    new-instance v3, Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/dialer/app/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/app/list/SearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->setupEmptyView()V

    :cond_1
    const v3, 0x7f0600fb

    .line 124
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/SearchFragment;->setVisibleScrollbarEnabled(Z)V

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAccessibilityLiveRegion(I)V

    .line 130
    invoke-static {v2}, Lcom/android/dialer/app/list/ContentChangedFilter;->addToParent(Landroid/view/View;)V

    .line 132
    new-instance v1, Lcom/android/dialer/app/list/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/list/SearchFragment$1;-><init>(Lcom/android/dialer/app/list/SearchFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/SearchFragment;->updatePosition(Z)V

    return-void
.end method

.method public resizeListView()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->getDialpadHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 358
    iget-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    .line 361
    invoke-virtual {v3}, Landroid/widget/Space;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    .line 363
    invoke-interface {v3}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    .line 364
    invoke-interface {v3}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->getDialpadHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SearchFragment.resizeListView"

    const-string v3, "spacerHeight: %d -> %d, isDialpadShown: %b, dialpad height: %d"

    .line 358
    invoke-static {v1, v3, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 368
    iget-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setAddToContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivityOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected setupEmptyView()V
    .locals 0

    return-void
.end method

.method protected startLoading()V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startLoading()V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;

    .line 383
    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->disableAllShortcuts()V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 391
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->setupEmptyView()V

    return-void
.end method

.method public updatePosition(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SearchFragment.updatePosition"

    const-string v3, "animate: %b"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-interface {v0}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mActionBarHeight:I

    iget v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mShadowHeight:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/dialer/app/list/SearchFragment;->mShadowHeight:I

    neg-int v0, v0

    :goto_0
    if-nez p1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {v1}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isActionBarShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_3

    .line 307
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {v1}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActionBarHeight:I

    iget v3, p0, Lcom/android/dialer/app/list/SearchFragment;->mShadowHeight:I

    sub-int/2addr v1, v3

    :goto_3
    if-eqz p1, :cond_7

    .line 311
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {p1}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 313
    sget-object v3, Lcom/android/dialer/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    :goto_4
    if-eqz p1, :cond_6

    .line 314
    iget v4, p0, Lcom/android/dialer/app/list/SearchFragment;->mShowDialpadDuration:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/dialer/app/list/SearchFragment;->mHideDialpadDuration:I

    .line 315
    :goto_5
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v5

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 316
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, v4

    .line 320
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/list/SearchFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/app/list/SearchFragment$3;-><init>(Lcom/android/dialer/app/list/SearchFragment;Z)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_6

    .line 339
    :cond_7
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object p1

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 340
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->resizeListView()V

    .line 344
    :goto_6
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment;->mActivity:Lcom/android/dialer/app/list/SearchFragment$HostInterface;

    invoke-interface {p1}, Lcom/android/dialer/app/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    iget v2, p0, Lcom/android/dialer/app/list/SearchFragment;->mPaddingTop:I

    .line 345
    :goto_7
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v0

    .line 349
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v1

    .line 350
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    .line 346
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    return-void
.end method
