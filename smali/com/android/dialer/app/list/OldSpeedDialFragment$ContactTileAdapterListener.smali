.class Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;
.super Ljava/lang/Object;
.source "OldSpeedDialFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/OldSpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;Lcom/android/dialer/app/list/OldSpeedDialFragment$1;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public onCallNumberDirectly(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$800(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$800(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V

    :cond_0
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 1

    .line 471
    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$800(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 472
    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$800(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)V

    :cond_0
    return-void
.end method
