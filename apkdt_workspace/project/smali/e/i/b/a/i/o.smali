.class final synthetic Le/i/b/a/i/o;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Le/i/b/a/h;


# static fields
.field private static final a:Le/i/b/a/i/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/i/b/a/i/o;

    invoke-direct {v0}, Le/i/b/a/i/o;-><init>()V

    sput-object v0, Le/i/b/a/i/o;->a:Le/i/b/a/i/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/i/b/a/h;
    .locals 1

    sget-object v0, Le/i/b/a/i/o;->a:Le/i/b/a/i/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Le/i/b/a/i/p;->a(Ljava/lang/Exception;)V

    return-void
.end method
