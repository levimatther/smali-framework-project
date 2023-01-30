.class public Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneDisambiguationDialogFragment"
.end annotation


# static fields
.field private static final ARG_INTERACTION_TYPE:Ljava/lang/String; = "interactionType"

.field private static final ARG_IS_VIDEO_CALL:Ljava/lang/String; = "is_video_call"

.field private static final ARG_PHONE_LIST:Ljava/lang/String; = "phoneList"


# instance fields
.field private mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

.field private mInteractionType:I

.field private mIsVideoCall:Z

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;IZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;IZ",
            "Lcom/android/dialer/callintent/CallSpecificAppData;",
            ")V"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;-><init>()V

    .line 507
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phoneList"

    .line 508
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "interactionType"

    .line 509
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_video_call"

    .line 510
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    invoke-static {v1, p4}, Lcom/android/dialer/callintent/CallIntentParser;->putCallSpecificAppData(Landroid/os/Bundle;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    .line 512
    invoke-virtual {v0, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 513
    invoke-static {}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    .line 547
    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_3

    if-ltz p2, :cond_3

    .line 548
    iget-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    const p2, 0x7f0902af

    .line 549
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 550
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 551
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object p2

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    if-ne p2, v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 553
    invoke-interface {p2, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 558
    :cond_1
    iget-wide v1, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 559
    invoke-static {v0, v1, v2}, Lcom/android/dialer/interactions/ContactUpdateService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p2

    .line 560
    invoke-virtual {v0, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 563
    :cond_2
    iget-object p1, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    iget-boolean v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mIsVideoCall:Z

    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->access$300(Landroid/content/Context;Ljava/lang/String;IZLcom/android/dialer/callintent/CallSpecificAppData;)V

    goto :goto_0

    .line 566
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 518
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 519
    instance-of v0, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoneList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    .line 522
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "interactionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    .line 523
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_video_call"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mIsVideoCall:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/callintent/CallIntentParser;->getCallSpecificAppData(Landroid/os/Bundle;)Lcom/android/dialer/callintent/CallSpecificAppData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 526
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    iget v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    invoke-direct {v0, p1, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 527
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0100

    const/4 v2, 0x0

    .line 529
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 531
    invoke-virtual {v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f110448

    goto :goto_0

    :cond_0
    const v1, 0x7f1100a5

    .line 532
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 536
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 572
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 575
    check-cast p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;

    invoke-interface {p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;->onDisambigDialogDismissed()V

    :cond_0
    return-void
.end method
