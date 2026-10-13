.class public Le/f/i/e/a;
.super Ljava/lang/RuntimeException;
.source "DecodeException.java"


# instance fields
.field private final mEncodedImage:Le/f/i/g/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/f/i/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Le/f/i/e/a;->mEncodedImage:Le/f/i/g/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Le/f/i/g/e;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p3, p0, Le/f/i/e/a;->mEncodedImage:Le/f/i/g/e;

    return-void
.end method


# virtual methods
.method public getEncodedImage()Le/f/i/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/e/a;->mEncodedImage:Le/f/i/g/e;

    return-object v0
.end method
