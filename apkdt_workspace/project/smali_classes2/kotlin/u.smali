.class public final Lkotlin/u;
.super Ljava/lang/Object;
.source "AssertionsJVM.kt"


# annotations
.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field public static final a:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/u;

    invoke-direct {v0}, Lkotlin/u;-><init>()V

    .line 2
    const-class v0, Lkotlin/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    sput-boolean v0, Lkotlin/u;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
