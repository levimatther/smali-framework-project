.class public Lcom/android/contacts/common/list/ContactsSectionIndexer;
.super Ljava/lang/Object;
.source "ContactsSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final BLANK_HEADER_STRING:Ljava/lang/String; = " "


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 44
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    .line 51
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 52
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    const/4 p1, 0x0

    move v0, p1

    .line 54
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aput-object v2, v1, p1

    goto :goto_1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 61
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    aput v0, v1, p1

    .line 62
    aget v1, p2, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iput v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    return-void

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The sections and counts arrays must have the same length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 41
    throw p1
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    if-ltz p1, :cond_2

    .line 80
    iget v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public setProfileAndFavoritesHeader(Ljava/lang/String;I)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    add-int/2addr v3, v1

    new-array v3, v3, [I

    .line 108
    aput-object p1, v0, v2

    .line 109
    aput v2, v3, v2

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    .line 112
    aget p1, p1, v4

    add-int/2addr p1, p2

    aput p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 115
    iput-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    .line 116
    iget p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    :cond_2
    return-void
.end method
