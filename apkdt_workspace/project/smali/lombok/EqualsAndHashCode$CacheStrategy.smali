.class public final enum Llombok/EqualsAndHashCode$CacheStrategy;
.super Ljava/lang/Enum;
.source "EqualsAndHashCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/EqualsAndHashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llombok/EqualsAndHashCode$CacheStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Llombok/EqualsAndHashCode$CacheStrategy;

.field public static final enum LAZY:Llombok/EqualsAndHashCode$CacheStrategy;

.field public static final enum NEVER:Llombok/EqualsAndHashCode$CacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    new-instance v0, Llombok/EqualsAndHashCode$CacheStrategy;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llombok/EqualsAndHashCode$CacheStrategy;-><init>(Ljava/lang/String;I)V

    .line 148
    sput-object v0, Llombok/EqualsAndHashCode$CacheStrategy;->NEVER:Llombok/EqualsAndHashCode$CacheStrategy;

    .line 149
    new-instance v1, Llombok/EqualsAndHashCode$CacheStrategy;

    const-string v3, "LAZY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Llombok/EqualsAndHashCode$CacheStrategy;-><init>(Ljava/lang/String;I)V

    .line 156
    sput-object v1, Llombok/EqualsAndHashCode$CacheStrategy;->LAZY:Llombok/EqualsAndHashCode$CacheStrategy;

    const/4 v3, 0x2

    new-array v3, v3, [Llombok/EqualsAndHashCode$CacheStrategy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 144
    sput-object v3, Llombok/EqualsAndHashCode$CacheStrategy;->ENUM$VALUES:[Llombok/EqualsAndHashCode$CacheStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llombok/EqualsAndHashCode$CacheStrategy;
    .locals 1

    .line 1
    const-class v0, Llombok/EqualsAndHashCode$CacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llombok/EqualsAndHashCode$CacheStrategy;

    return-object p0
.end method

.method public static values()[Llombok/EqualsAndHashCode$CacheStrategy;
    .locals 4

    .line 1
    sget-object v0, Llombok/EqualsAndHashCode$CacheStrategy;->ENUM$VALUES:[Llombok/EqualsAndHashCode$CacheStrategy;

    array-length v1, v0

    new-array v2, v1, [Llombok/EqualsAndHashCode$CacheStrategy;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
