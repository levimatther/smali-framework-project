.class Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationshipKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1799
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1799
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    const-string p1, "assistant"

    .line 1836
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1837
    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "brother"

    .line 1839
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 1840
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "child"

    .line 1842
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 1843
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "domestic_partner"

    .line 1845
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 1846
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "father"

    .line 1848
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    .line 1849
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "friend"

    .line 1851
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    .line 1852
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "manager"

    .line 1854
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    .line 1855
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "mother"

    .line 1857
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    .line 1858
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "parent"

    .line 1860
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x9

    .line 1861
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "partner"

    .line 1863
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0xa

    .line 1864
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "referred_by"

    .line 1866
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xb

    .line 1867
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p1, "relative"

    .line 1869
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    .line 1870
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "sister"

    .line 1872
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xd

    .line 1873
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, "spouse"

    .line 1875
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0xe

    .line 1876
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, "custom"

    .line 1878
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 1879
    invoke-static {p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    .line 1880
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    const-string p2, "data3"

    .line 1881
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "relationship"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    new-instance v9, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v11, "data1"

    invoke-direct {v10, v11}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "vnd.android.cursor.item/relation"

    const-string v6, "data2"

    const v7, 0x7f1103e3

    const/16 v8, 0x3e7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1810
    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object p1

    .line 1822
    iget-object p2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance p3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const v0, 0x7f1103e3

    const/16 v1, 0x2061

    invoke-direct {p3, v11, v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    iput-object p2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1826
    iget-object p2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const/16 p3, 0xe

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "data2"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1828
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
