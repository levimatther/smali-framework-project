.class public final synthetic Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;->f$0:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    iput p2, p0, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;->f$0:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    iget v1, p0, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/list/ContactListItemView;->lambda$setCallToAction$2(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;ILandroid/view/View;)V

    return-void
.end method
