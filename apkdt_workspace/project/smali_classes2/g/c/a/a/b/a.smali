.class public final synthetic Lg/c/a/a/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic e:Lg/c/a/a/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/c/a/a/b/a;

    invoke-direct {v0}, Lg/c/a/a/b/a;-><init>()V

    sput-object v0, Lg/c/a/a/b/a;->e:Lg/c/a/a/b/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lg/c/a/a/b/b;->a()Lg/c/a/b/g;

    move-result-object v0

    return-object v0
.end method
