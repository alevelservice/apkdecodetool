.class public final enum Lcom/alibaba/fastjson/a/e;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AllowArbitraryCommas:Lcom/alibaba/fastjson/a/e;

.field public static final enum AllowComment:Lcom/alibaba/fastjson/a/e;

.field public static final enum AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

.field public static final enum AllowSingleQuotes:Lcom/alibaba/fastjson/a/e;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/e;

.field public static final enum AutoCloseSource:Lcom/alibaba/fastjson/a/e;

.field public static final enum DisableASM:Lcom/alibaba/fastjson/a/e;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/e;

.field public static final enum DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

.field public static final enum IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson/a/e;

.field public static final enum InternFieldNames:Lcom/alibaba/fastjson/a/e;

.field public static final enum OrderedField:Lcom/alibaba/fastjson/a/e;

.field public static final enum SortFeidFastMatch:Lcom/alibaba/fastjson/a/e;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson/a/e;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson/a/e;

.field public static final enum SupportNonPublicField:Lcom/alibaba/fastjson/a/e;

.field public static final enum UseBigDecimal:Lcom/alibaba/fastjson/a/e;

.field private static final synthetic e:[Lcom/alibaba/fastjson/a/e;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v1, 0x0

    const-string v2, "AutoCloseSource"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AutoCloseSource:Lcom/alibaba/fastjson/a/e;

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v2, 0x1

    const-string v3, "AllowComment"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AllowComment:Lcom/alibaba/fastjson/a/e;

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v3, 0x2

    const-string v4, "AllowUnQuotedFieldNames"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/e;

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v4, 0x3

    const-string v5, "AllowSingleQuotes"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/e;

    .line 5
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v5, 0x4

    const-string v6, "InternFieldNames"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->InternFieldNames:Lcom/alibaba/fastjson/a/e;

    .line 6
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v6, 0x5

    const-string v7, "AllowISO8601DateFormat"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v7, 0x6

    const-string v8, "AllowArbitraryCommas"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/e;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/4 v8, 0x7

    const-string v9, "UseBigDecimal"

    invoke-direct {v0, v9, v8}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->UseBigDecimal:Lcom/alibaba/fastjson/a/e;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v9, 0x8

    const-string v10, "IgnoreNotMatch"

    invoke-direct {v0, v10, v9}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v10, 0x9

    const-string v11, "SortFeidFastMatch"

    invoke-direct {v0, v11, v10}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->SortFeidFastMatch:Lcom/alibaba/fastjson/a/e;

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v11, 0xa

    const-string v12, "DisableASM"

    invoke-direct {v0, v12, v11}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->DisableASM:Lcom/alibaba/fastjson/a/e;

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v12, 0xb

    const-string v13, "DisableCircularReferenceDetect"

    invoke-direct {v0, v13, v12}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/e;

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v13, 0xc

    const-string v14, "InitStringFieldAsEmpty"

    invoke-direct {v0, v14, v13}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/a/e;

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v14, 0xd

    const-string v15, "SupportArrayToBean"

    invoke-direct {v0, v15, v14}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->SupportArrayToBean:Lcom/alibaba/fastjson/a/e;

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const/16 v15, 0xe

    const-string v14, "OrderedField"

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const-string v14, "DisableSpecialKeyDetect"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    .line 17
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const-string v14, "SupportNonPublicField"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->SupportNonPublicField:Lcom/alibaba/fastjson/a/e;

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    const-string v14, "SupportAutoType"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->SupportAutoType:Lcom/alibaba/fastjson/a/e;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/alibaba/fastjson/a/e;

    .line 19
    sget-object v14, Lcom/alibaba/fastjson/a/e;->AutoCloseSource:Lcom/alibaba/fastjson/a/e;

    aput-object v14, v0, v1

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowComment:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/a/e;->InternFieldNames:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/fastjson/a/e;->UseBigDecimal:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/fastjson/a/e;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/fastjson/a/e;->SortFeidFastMatch:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/fastjson/a/e;->DisableASM:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/fastjson/a/e;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v12

    sget-object v1, Lcom/alibaba/fastjson/a/e;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/a/e;

    aput-object v1, v0, v13

    sget-object v1, Lcom/alibaba/fastjson/a/e;->SupportArrayToBean:Lcom/alibaba/fastjson/a/e;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/a/e;->SupportNonPublicField:Lcom/alibaba/fastjson/a/e;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/a/e;->SupportAutoType:Lcom/alibaba/fastjson/a/e;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/a/e;->e:[Lcom/alibaba/fastjson/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/alibaba/fastjson/a/e;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/a/e;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/fastjson/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/a/e;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/a/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/a/e;->e:[Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/a/e;

    return-object v0
.end method
