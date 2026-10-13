.class public Le/i/c/a/f;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Le/i/c/a/f;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Le/i/c/a/f;->a:Ljava/lang/String;

    iput-object p1, p0, Le/i/c/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Le/i/c/a/f;Le/i/c/a/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/i/c/a/f;-><init>(Le/i/c/a/f;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Le/i/c/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Le/i/c/a/f;
    .locals 1

    .line 1
    new-instance v0, Le/i/c/a/f;

    invoke-direct {v0, p0}, Le/i/c/a/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/i/c/a/f;
    .locals 1

    .line 1
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le/i/c/a/f$a;

    invoke-direct {v0, p0, p0, p1}, Le/i/c/a/f$a;-><init>(Le/i/c/a/f;Le/i/c/a/f;Ljava/lang/String;)V

    return-object v0
.end method
