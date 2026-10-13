.class public final enum Le/f/i/i/b$b;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/i/i/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BITMAP_MEMORY_CACHE:Le/f/i/i/b$b;

.field public static final enum DISK_CACHE:Le/f/i/i/b$b;

.field public static final enum ENCODED_MEMORY_CACHE:Le/f/i/i/b$b;

.field public static final enum FULL_FETCH:Le/f/i/i/b$b;

.field private static final synthetic e:[Le/f/i/i/b$b;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/f/i/i/b$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FULL_FETCH"

    invoke-direct {v0, v3, v1, v2}, Le/f/i/i/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/f/i/i/b$b;->FULL_FETCH:Le/f/i/i/b$b;

    .line 2
    new-instance v0, Le/f/i/i/b$b;

    const/4 v3, 0x2

    const-string v4, "DISK_CACHE"

    invoke-direct {v0, v4, v2, v3}, Le/f/i/i/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/f/i/i/b$b;->DISK_CACHE:Le/f/i/i/b$b;

    .line 3
    new-instance v0, Le/f/i/i/b$b;

    const/4 v4, 0x3

    const-string v5, "ENCODED_MEMORY_CACHE"

    invoke-direct {v0, v5, v3, v4}, Le/f/i/i/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/f/i/i/b$b;->ENCODED_MEMORY_CACHE:Le/f/i/i/b$b;

    .line 4
    new-instance v0, Le/f/i/i/b$b;

    const/4 v5, 0x4

    const-string v6, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v6, v4, v5}, Le/f/i/i/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/f/i/i/b$b;->BITMAP_MEMORY_CACHE:Le/f/i/i/b$b;

    new-array v0, v5, [Le/f/i/i/b$b;

    .line 5
    sget-object v5, Le/f/i/i/b$b;->FULL_FETCH:Le/f/i/i/b$b;

    aput-object v5, v0, v1

    sget-object v1, Le/f/i/i/b$b;->DISK_CACHE:Le/f/i/i/b$b;

    aput-object v1, v0, v2

    sget-object v1, Le/f/i/i/b$b;->ENCODED_MEMORY_CACHE:Le/f/i/i/b$b;

    aput-object v1, v0, v3

    sget-object v1, Le/f/i/i/b$b;->BITMAP_MEMORY_CACHE:Le/f/i/i/b$b;

    aput-object v1, v0, v4

    sput-object v0, Le/f/i/i/b$b;->e:[Le/f/i/i/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/f/i/i/b$b;->mValue:I

    return-void
.end method

.method public static getMax(Le/f/i/i/b$b;Le/f/i/i/b$b;)Le/f/i/i/b$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/f/i/i/b$b;->getValue()I

    move-result v0

    invoke-virtual {p1}, Le/f/i/i/b$b;->getValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/f/i/i/b$b;
    .locals 1

    .line 1
    const-class v0, Le/f/i/i/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/i/i/b$b;

    return-object p0
.end method

.method public static values()[Le/f/i/i/b$b;
    .locals 1

    .line 1
    sget-object v0, Le/f/i/i/b$b;->e:[Le/f/i/i/b$b;

    invoke-virtual {v0}, [Le/f/i/i/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/i/i/b$b;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/i/b$b;->mValue:I

    return v0
.end method
