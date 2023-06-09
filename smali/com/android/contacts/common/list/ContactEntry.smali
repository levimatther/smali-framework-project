.class public Lcom/android/contacts/common/list/ContactEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"


# static fields
.field public static final BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

.field private static final UNSET_DISPLAY_ORDER_PREFERENCE:I = -0x1


# instance fields
.field public id:J

.field public isDefaultNumber:Z

.field public isFavorite:Z

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public nameAlternative:Ljava/lang/String;

.field public nameDisplayOrder:I

.field public namePrimary:Ljava/lang/String;

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public pinned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntry;->nameDisplayOrder:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 46
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    return-void
.end method


# virtual methods
.method public getPreferredDisplayName()Ljava/lang/String;
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntry;->nameDisplayOrder:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    return-object v0
.end method
