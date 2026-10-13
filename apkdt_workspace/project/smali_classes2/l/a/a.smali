.class public final Ll/a/a;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a/a$b;
    }
.end annotation


# static fields
.field private static final a:[Ll/a/a$b;

.field static volatile b:[Ll/a/a$b;

.field private static final c:Ll/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ll/a/a$b;

    .line 1
    sput-object v0, Ll/a/a;->a:[Ll/a/a$b;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v0, Ll/a/a;->a:[Ll/a/a$b;

    sput-object v0, Ll/a/a;->b:[Ll/a/a$b;

    .line 4
    new-instance v0, Ll/a/a$a;

    invoke-direct {v0}, Ll/a/a$a;-><init>()V

    sput-object v0, Ll/a/a;->c:Ll/a/a$b;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ll/a/a;->c:Ll/a/a$b;

    invoke-virtual {v0, p0, p1}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
