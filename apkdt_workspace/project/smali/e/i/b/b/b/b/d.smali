.class public final Le/i/b/b/b/b/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# static fields
.field private static final a:Le/i/b/b/b/b/a;

.field private static volatile b:Le/i/b/b/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/i/b/b/b/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/i/b/b/b/b/c;-><init>(Le/i/b/b/b/b/b;)V

    sput-object v0, Le/i/b/b/b/b/d;->a:Le/i/b/b/b/b/a;

    sget-object v0, Le/i/b/b/b/b/d;->a:Le/i/b/b/b/b/a;

    sput-object v0, Le/i/b/b/b/b/d;->b:Le/i/b/b/b/b/a;

    return-void
.end method

.method public static a()Le/i/b/b/b/b/a;
    .locals 1

    sget-object v0, Le/i/b/b/b/b/d;->b:Le/i/b/b/b/b/a;

    return-object v0
.end method
