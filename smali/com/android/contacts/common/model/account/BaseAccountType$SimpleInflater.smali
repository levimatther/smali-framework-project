.class public Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/common/model/account/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput p1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 604
    iput-object p2, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 599
    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColumnNameForTest()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 6

    .line 609
    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 610
    iget v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 612
    iget v5, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    if-eqz v0, :cond_2

    .line 613
    iget-object v5, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v4

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 616
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    return-object p2

    :cond_5
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
