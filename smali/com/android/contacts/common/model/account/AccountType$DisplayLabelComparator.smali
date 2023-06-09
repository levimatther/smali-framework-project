.class public Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;
.super Ljava/lang/Object;
.source "AccountType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayLabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/common/model/account/AccountType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mCollator:Ljava/text/Collator;

    .line 490
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 495
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mCollator:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 483
    check-cast p1, Lcom/android/contacts/common/model/account/AccountType;

    check-cast p2, Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->compare(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I

    move-result p1

    return p1
.end method
