//
//  ISProductCalculatorTests.m
//  Project Euler
//
//  Created by Luke Ryan on 9/11/13.
//  Copyright (c) 2013 Luke Ryan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ISProductCalculator.h"
@class ISProductCalculator;

@interface ISProductCalculatorTests : XCTestCase

@end

@implementation ISProductCalculatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLessThanFiveCharacters
{
    ISProductCalculator * sut = [[ISProductCalculator alloc]init];
    NSInteger result = [sut caclulateProduct:@"1"];
    
    XCTAssertEqual((NSInteger)0, result);
}

- (void)testOneSeries
{
    ISProductCalculator * sut = [[ISProductCalculator alloc]init];
    NSInteger result = [sut caclulateProduct:@"11111"];
    
    XCTAssertEqual((NSInteger)1, result);
}

- (void)testTwoSeries
{
    ISProductCalculator * sut = [[ISProductCalculator alloc]init];
    NSInteger result = [sut caclulateProduct:@"111112"];
    
    XCTAssertEqual((NSInteger)2, result);
}

- (void)testThreeSeries
{
    ISProductCalculator * sut = [[ISProductCalculator alloc]init];
    NSInteger result = [sut caclulateProduct:@"111112222290"];
    
    XCTAssertEqual((NSInteger)144, result);
}

@end
