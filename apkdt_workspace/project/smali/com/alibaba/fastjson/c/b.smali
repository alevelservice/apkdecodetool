.class public final enum Lcom/alibaba/fastjson/c/b;
.super Ljava/lang/Enum;
.source "SerializerFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BeanToArray:Lcom/alibaba/fastjson/c/b;

.field public static final enum DisableCheckSpecialChar:Lcom/alibaba/fastjson/c/b;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

.field public static final EMPTY:[Lcom/alibaba/fastjson/c/b;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson/c/b;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson/c/b;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson/c/b;

.field public static final enum QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

.field public static final enum SkipTransientField:Lcom/alibaba/fastjson/c/b;

.field public static final enum SortField:Lcom/alibaba/fastjson/c/b;

.field public static final enum UseISO8601DateFormat:Lcom/alibaba/fastjson/c/b;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteDateUseDateFormat:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteSlashAsSpecial:Lcom/alibaba/fastjson/c/b;

.field public static final enum WriteTabAsSpecial:Lcom/alibaba/fastjson/c/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final synthetic e:[Lcom/alibaba/fastjson/c/b;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v1, 0x0

    const-string v2, "QuoteFieldNames"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v2, 0x1

    const-string v3, "UseSingleQuotes"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v3, 0x2

    const-string v4, "WriteMapNullValue"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v4, 0x3

    const-string v5, "WriteEnumUsingToString"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteEnumUsingToString:Lcom/alibaba/fastjson/c/b;

    .line 5
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v5, 0x4

    const-string v6, "UseISO8601DateFormat"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->UseISO8601DateFormat:Lcom/alibaba/fastjson/c/b;

    .line 6
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v6, 0x5

    const-string v7, "WriteNullListAsEmpty"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v7, 0x6

    const-string v8, "WriteNullStringAsEmpty"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/4 v8, 0x7

    const-string v9, "WriteNullNumberAsZero"

    invoke-direct {v0, v9, v8}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v9, 0x8

    const-string v10, "WriteNullBooleanAsFalse"

    invoke-direct {v0, v10, v9}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v10, 0x9

    const-string v11, "SkipTransientField"

    invoke-direct {v0, v11, v10}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->SkipTransientField:Lcom/alibaba/fastjson/c/b;

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v11, 0xa

    const-string v12, "SortField"

    invoke-direct {v0, v12, v11}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->SortField:Lcom/alibaba/fastjson/c/b;

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v12, 0xb

    const-string v13, "WriteTabAsSpecial"

    invoke-direct {v0, v13, v12}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteTabAsSpecial:Lcom/alibaba/fastjson/c/b;

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v13, 0xc

    const-string v14, "PrettyFormat"

    invoke-direct {v0, v14, v13}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v14, 0xd

    const-string v15, "WriteClassName"

    invoke-direct {v0, v15, v14}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const/16 v15, 0xe

    const-string v14, "DisableCircularReferenceDetect"

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "WriteSlashAsSpecial"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/c/b;

    .line 17
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "WriteDateUseDateFormat"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/c/b;

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "NotWriteRootClassName"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->NotWriteRootClassName:Lcom/alibaba/fastjson/c/b;

    .line 19
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "DisableCheckSpecialChar"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/c/b;

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "BeanToArray"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->BeanToArray:Lcom/alibaba/fastjson/c/b;

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "WriteNonStringKeyAsString"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/c/b;

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/c/b;

    const-string v14, "NotWriteDefaultValue"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/alibaba/fastjson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/c/b;->NotWriteDefaultValue:Lcom/alibaba/fastjson/c/b;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/alibaba/fastjson/c/b;

    .line 23
    sget-object v14, Lcom/alibaba/fastjson/c/b;->QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

    aput-object v14, v0, v1

    sget-object v14, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    aput-object v14, v0, v2

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteEnumUsingToString:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v4

    sget-object v2, Lcom/alibaba/fastjson/c/b;->UseISO8601DateFormat:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v5

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v6

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v7

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v8

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v9

    sget-object v2, Lcom/alibaba/fastjson/c/b;->SkipTransientField:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v10

    sget-object v2, Lcom/alibaba/fastjson/c/b;->SortField:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v11

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteTabAsSpecial:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v12

    sget-object v2, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    aput-object v2, v0, v13

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->NotWriteRootClassName:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->BeanToArray:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    sget-object v2, Lcom/alibaba/fastjson/c/b;->NotWriteDefaultValue:Lcom/alibaba/fastjson/c/b;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    sput-object v0, Lcom/alibaba/fastjson/c/b;->e:[Lcom/alibaba/fastjson/c/b;

    new-array v0, v1, [Lcom/alibaba/fastjson/c/b;

    .line 24
    sput-object v0, Lcom/alibaba/fastjson/c/b;->EMPTY:[Lcom/alibaba/fastjson/c/b;

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

    iput p1, p0, Lcom/alibaba/fastjson/c/b;->mask:I

    return-void
.end method

.method public static of([Lcom/alibaba/fastjson/c/b;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 2
    iget v3, v3, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/c/b;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/fastjson/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/c/b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/c/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/c/b;->e:[Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/c/b;

    return-object v0
.end method
